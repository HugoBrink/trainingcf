using {Base} from './common';
using from './salesorder';

namespace training.client;

entity TbIClient : Base {
    name: String(100);
    age: Integer;
    familyName: String(100);
}