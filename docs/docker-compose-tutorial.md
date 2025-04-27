<h1 align="center">Docker Compose Setup Tutorial</h1>

## Understanding the Dual Docker Compose Configuration

This project uses two docker-compose.yml files to provide flexibility in how you work with the LaTeX environment. This tutorial explains the purpose of each file and how to use them effectively.

### 1. The Two Docker Compose Files

#### 1.1 Dev Container Configuration (.devcontainer/docker-compose.yml)

This file is used by VS Code's Dev Containers extension:
- Automatically detected when you open the project in VS Code/Cursor
- Used when you click "Reopen in Container" or run the command from the Command Palette
- Integrates with VS Code's development container workflow
- Includes specific volume mappings for VS Code extensions

#### 1.2 Root Configuration (docker-compose.yml)

This file in the project root is for manual container management:
- Designed for direct use with docker-compose commands
- Supports convenient aliases like `dcu` and `dcd`
- Follows the convention of keeping configuration files in the root directory
- Contains essentially the same configuration but adapts paths for root-level usage

### 2. When to Use Each File

| Scenario | Which File to Use |
|----------|-------------------|
| Opening the project in VS Code/Cursor with Dev Containers | .devcontainer/docker-compose.yml (automatic) |
| Starting the container from command line | Root docker-compose.yml |
| CI/CD pipelines | Root docker-compose.yml |
| Quick manual container management | Root docker-compose.yml |

### 3. Command Reference

#### 3.1 Using the Root docker-compose.yml

Start the container:
```bash
dcu
# or
docker-compose up -d --build
```

Stop the container:
```bash
dcd  
# or
docker-compose down
```

Check container status:
```bash
docker-compose ps
```

#### 3.2 Using the Dev Container Version

Start the container:
```bash
docker-compose -f .devcontainer/docker-compose.yml up -d --build
```

Stop the container:
```bash
docker-compose -f .devcontainer/docker-compose.yml down
```

### 4. Setting Up Aliases (If You Haven't Already)

Add these lines to your ~/.bashrc or ~/.zshrc file:
```bash
alias dcu='docker-compose up -d --build'
alias dcd='docker-compose down'
```

Then apply the changes:
```bash
source ~/.bashrc  # or source ~/.zshrc
```

### 5. Why Use the --build Flag

The `--build` flag forces Docker to rebuild the container images before starting containers. This is advantageous because it:

- Ensures you're always using the latest image definition
- Incorporates any changes to Dockerfiles or dependencies
- Reduces "it works on my machine" problems by rebuilding consistently
- Prevents issues caused by outdated cached images

This is especially important in development environments where container configurations might change frequently.

### 6. Benefits of the Dual Setup

- **Flexibility**: Choose between VS Code's integrated workflow or command-line management
- **Convenience**: Use shorter commands for common operations
- **Compatibility**: Support both Dev Containers users and traditional Docker users
- **Standardization**: Follow conventions for both Dev Containers and Docker Compose
- **Isolation**: Keep VS Code-specific configuration separate from general Docker setup

This approach is common in projects that need to support both automated development environments and manual container management workflows. 