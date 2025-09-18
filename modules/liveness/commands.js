/**
 * Liveness Detection Commands - Day 8
 * User instruction commands for liveness testing
 */

// Command definitions for liveness testing
const commands = [
  {
    id: 1,
    type: "lookRight",
    message: "Lütfen sağa bakın",
    instruction: "TURN_RIGHT",
    duration: 3000,
    icon: "👉",
  },
  {
    id: 2,
    type: "lookLeft",
    message: "Lütfen sola bakın",
    instruction: "TURN_LEFT",
    duration: 3000,
    icon: "👈",
  },
  {
    id: 3,
    type: "blink",
    message: "Lütfen gözlerinizi kırpın",
    instruction: "BLINK",
    duration: 2000,
    icon: "👁️",
  },
  {
    id: 4,
    type: "lookStraight",
    message: "Lütfen kameraya doğru bakın",
    instruction: "LOOK_STRAIGHT",
    duration: 2000,
    icon: "👀",
  },
  {
    id: 5,
    type: "smile",
    message: "Lütfen gülümseyin",
    instruction: "SMILE",
    duration: 3000,
    icon: "😊",
  },
  {
    id: 6,
    type: "nod",
    message: "Lütfen başınızı sallayın",
    instruction: "NOD",
    duration: 3000,
    icon: "👆",
  },
];

/**
 * Get a random command from the available commands
 * @returns {object} Random command object
 */
export const getRandomCommand = () => {
  const randomIndex = Math.floor(Math.random() * commands.length);
  return commands[randomIndex];
};

/**
 * Get command by type
 * @param {string} type - Command type
 * @returns {object|null} Command object or null if not found
 */
const getCommandByTypeExport = (type) => {
  return commands.find((command) => command.type === type) || null;
};

/**
 * Get command by instruction
 * @param {string} instruction - Instruction type
 * @returns {object|null} Command object or null if not found
 */
export const getCommandByInstruction = (instruction) => {
  return (
    commands.find((command) => command.instruction === instruction) || null
  );
};

/**
 * Get all available command types
 * @returns {string[]} Array of command types
 */
export const getAvailableCommandTypes = () => {
  return commands.map((command) => command.type);
};

/**
 * Get commands for a specific difficulty level
 * @param {string} difficulty - easy, medium, hard
 * @returns {object[]} Filtered commands array
 */
export const getCommandsByDifficulty = (difficulty = 'easy') => {
  const difficultyMap = {
    easy: ['lookStraight', 'blink'],
    medium: ['lookRight', 'lookLeft', 'smile'],
    hard: ['nod', 'lookRight', 'lookLeft', 'blink'],
  };

  const allowedTypes = difficultyMap[difficulty] || difficultyMap.easy;
  return commands.filter((command) => allowedTypes.includes(command.type));
};

/**
 * Generate a sequence of random commands
 * @param {number} count - Number of commands to generate
 * @param {string} difficulty - Difficulty level
 * @returns {object[]} Array of command objects
 */
export const generateCommandSequence = (count = 3, difficulty = 'easy') => {
  const availableCommands = getCommandsByDifficulty(difficulty);
  const sequence = [];

  for (let i = 0; i < count; i++) {
    const randomIndex = Math.floor(Math.random() * availableCommands.length);
    const command = {
      ...availableCommands[randomIndex],
      sequenceId: i + 1,
      timestamp: Date.now() + i * 1000, // Stagger timing
    };
    sequence.push(command);
  }

  return sequence;
};

// Export functions and commands array (removed duplicate)

module.exports = {
  commands,
  getCommandByType: getCommandByTypeExport,
  getCommandByInstruction: (instruction) => {
    return commands.find(cmd => cmd.instruction === instruction);
  },
};
