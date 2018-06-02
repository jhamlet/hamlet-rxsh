import { of } from 'rxjs';
import { concatMap, publishReplay, refCount } from 'rxjs/operators';

export const traverse = node =>
  node.stats.isDirectory()
    ? node.content.pipe(concatMap(traverse))
    : of(node).pipe(publishReplay(), refCount());

export default traverse;

