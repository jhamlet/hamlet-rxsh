import { concatMap } from 'rxjs/operators';
import { directory } from './directory';
import { traverse } from './traverse';

export * from './file';
export * from './directory';
export * from './glob';
export * from './mkdirp';
export * from './resolve';
export * from './rmrf';
export * from './traverse';
export * from './watch';

export const traverseDirectory =
  (...args) => directory(...args).pipe(concatMap(traverse));

