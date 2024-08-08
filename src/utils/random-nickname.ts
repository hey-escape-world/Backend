const name: string[] = [
  'AFG',
  'ALB',
  'ALG',
  'ASA',
  'AND',
  'ANG',
  'ANT',
  'ARG',
  'ARM',
  'AUS',
  'ARU',
  'ANZ',
];
const randomName = (): string => {
  return name[Math.floor(Math.random() * name.length)];
};
export const randomNum = (): number => {
  const min = 100000;
  const max = 999999;
  return Math.floor(Math.random() * (max - min + 1)) + min;
};

export const randomNickname = (): string => {
  return `${randomName()}-${randomNum()}`;
};
