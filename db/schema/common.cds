using {cuid,temporal, managed} from '@sap/cds/common';

entity Base: cuid, managed{
    key ID : String;
}

type STATUS_TYPE : String(1) enum {
    DRAFT = 'D';
    OPEN = 'O';
    COMPLETED = 'C';
}