import time
import threading
 
class LineFollowingRobot:
    def __init__(self, name, speed, start_pos=(0,0), start_direction='right'):
        self.name = name
        self.x, self.y = start_pos
        self.direction = start_direction
        self.speed = speed  # Time interval between moves
        # Define rectangle dimensions
        self.width = 20
        self.height = 10
        self.is_running = True
        self.has_error = False  # Add error state tracking
 
    def move(self):
        try:
            # Move based on current direction
            if self.direction == 'right':
                self.x += 1
                if self.x >= self.width:
                    self.direction = 'down'
            elif self.direction == 'down':
                self.y += 1
                if self.y >= self.height:
                    self.direction = 'left'
            elif self.direction == 'left':
                self.x -= 1
                if self.x <= 0:
                    self.direction = 'up'
            elif self.direction == 'up':
                self.y -= 1
                if self.y <= 0:
                    self.direction = 'right'
        except Exception as e:
            print(f"Error with robot {self.name}: {str(e)}")
            self.has_error = True
            self.is_running = False
 
def display_robots(robots):
    # Create empty grid
    width = 20
    height = 10
    grid = [[' ' for _ in range(width + 1)] for _ in range(height + 1)]
    # Draw rectangle outline
    for x in range(width + 1):
        grid[0][x] = '-'
        grid[height][x] = '-'
    for y in range(height + 1):
        grid[y][0] = '|'
        grid[y][width] = '|'
    # Place robots
    for robot in robots:
        grid[robot.y][robot.x] = robot.name[0]  # First letter of robot name
    # Print grid
    print("\033[H\033[J")  # Clear screen (works in most terminals)
    for row in grid:
        print(''.join(row))
    print("\nRobots:")
    for robot in robots:
        print(f"{robot.name}: Position({robot.x}, {robot.y}), Direction: {robot.direction}")
    print("\n")
 
def robot_controller(robot, robots):
    while robot.is_running:
        robot.move()
        # Check if any robot has an error
        if any(r.has_error for r in robots):
            print(f"Emergency stop triggered by robot error. Stopping all robots.")
            for r in robots:
                r.is_running = False
            break
        display_robots(robots)
        time.sleep(robot.speed)
 
def main():
    # Create robots with different speeds
    robots = [
        LineFollowingRobot("Red", speed=0.3, start_pos=(0,0), start_direction='right'),
        LineFollowingRobot("Blue", speed=0.5, start_pos=(0,2), start_direction='right'),
        LineFollowingRobot("Green", speed=0.7, start_pos=(0,4), start_direction='right')
    ]
 
    # Create threads for each robot
    threads = []
    for robot in robots:
        thread = threading.Thread(target=robot_controller, args=(robot, robots))
        threads.append(thread)
        thread.start()
 
    try:
        # Run for 30 seconds or until error
        start_time = time.time()
        while time.time() - start_time < 30 and not any(robot.has_error for robot in robots):
            time.sleep(0.1)
        
        # Stop all robots
        for robot in robots:
            robot.is_running = False
        # Wait for all threads to complete
        for thread in threads:
            thread.join()
    except KeyboardInterrupt:
        print("\nStopping robots...")
        for robot in robots:
            robot.is_running = False
        for thread in threads:
            thread.join()
 
if __name__ == "__main__":
    main()
