contract gasFee {
    uint[] a;
    uint[][] a_;
    uint[3][] _a;

    uint[3] b;
    uint[][3] b_;
    uint[3][3] _b;

    function setA(uint _a) public {
        a.push(_a);
    }

    function setA2(uint _a) public {
        a_.push([_a]);
    }

    function setA3(uint _b) public {
        _a.push([_b]);
    }

    function setA3_(uint[3] memory _b) public {
        _a.push(_b);
    }

    function setB(uint _n, uint _a) public {
        b[_n] = (_a);
    }

    function setB2(uint _n, uint _a) public {
        b_[_n] = [_a];
    }

    function setB3(uint _a, uint _bb, uint _c) public {
        _b[_a][_bb] = _c;
    }
}