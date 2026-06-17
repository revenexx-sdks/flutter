part of '../../enums.dart';

enum Code {
    aa(value: 'aa'),
    an(value: 'an'),
    ch(value: 'ch'),
    ci(value: 'ci'),
    cm(value: 'cm'),
    cr(value: 'cr'),
    ff(value: 'ff'),
    sf(value: 'sf'),
    mf(value: 'mf'),
    ps(value: 'ps'),
    oi(value: 'oi'),
    om(value: 'om'),
    op(value: 'op'),
    xon(value: 'on');

    const Code({
        required this.value
    });

    final String value;

    String toJson() => value;
}