// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_ticket_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMaintenanceTicketModelCollection on Isar {
  IsarCollection<MaintenanceTicketModel> get maintenanceTicketModels =>
      this.collection();
}

const MaintenanceTicketModelSchema = CollectionSchema(
  name: r'MaintenanceTicketModel',
  id: -7440516212190169635,
  properties: {
    r'customerName': PropertySchema(
      id: 0,
      name: r'customerName',
      type: IsarType.string,
    ),
    r'deviceModel': PropertySchema(
      id: 1,
      name: r'deviceModel',
      type: IsarType.string,
    ),
    r'id': PropertySchema(id: 2, name: r'id', type: IsarType.string),
    r'isWhatsAppSent': PropertySchema(
      id: 3,
      name: r'isWhatsAppSent',
      type: IsarType.bool,
    ),
    r'issueDescription': PropertySchema(
      id: 4,
      name: r'issueDescription',
      type: IsarType.string,
    ),
    r'phoneNumber': PropertySchema(
      id: 5,
      name: r'phoneNumber',
      type: IsarType.string,
    ),
    r'receivedDate': PropertySchema(
      id: 6,
      name: r'receivedDate',
      type: IsarType.dateTime,
    ),
    r'statusValue': PropertySchema(
      id: 7,
      name: r'statusValue',
      type: IsarType.string,
    ),
  },

  estimateSize: _maintenanceTicketModelEstimateSize,
  serialize: _maintenanceTicketModelSerialize,
  deserialize: _maintenanceTicketModelDeserialize,
  deserializeProp: _maintenanceTicketModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},

  getId: _maintenanceTicketModelGetId,
  getLinks: _maintenanceTicketModelGetLinks,
  attach: _maintenanceTicketModelAttach,
  version: '3.3.2',
);

int _maintenanceTicketModelEstimateSize(
  MaintenanceTicketModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.customerName.length * 3;
  bytesCount += 3 + object.deviceModel.length * 3;
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.issueDescription.length * 3;
  bytesCount += 3 + object.phoneNumber.length * 3;
  bytesCount += 3 + object.statusValue.length * 3;
  return bytesCount;
}

void _maintenanceTicketModelSerialize(
  MaintenanceTicketModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.customerName);
  writer.writeString(offsets[1], object.deviceModel);
  writer.writeString(offsets[2], object.id);
  writer.writeBool(offsets[3], object.isWhatsAppSent);
  writer.writeString(offsets[4], object.issueDescription);
  writer.writeString(offsets[5], object.phoneNumber);
  writer.writeDateTime(offsets[6], object.receivedDate);
  writer.writeString(offsets[7], object.statusValue);
}

MaintenanceTicketModel _maintenanceTicketModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MaintenanceTicketModel(
    customerName: reader.readString(offsets[0]),
    deviceModel: reader.readString(offsets[1]),
    id: reader.readStringOrNull(offsets[2]),
    isWhatsAppSent: reader.readBool(offsets[3]),
    isarId: id,
    issueDescription: reader.readString(offsets[4]),
    phoneNumber: reader.readString(offsets[5]),
    receivedDate: reader.readDateTime(offsets[6]),
    statusValue: reader.readString(offsets[7]),
  );
  return object;
}

P _maintenanceTicketModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _maintenanceTicketModelGetId(MaintenanceTicketModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _maintenanceTicketModelGetLinks(
  MaintenanceTicketModel object,
) {
  return [];
}

void _maintenanceTicketModelAttach(
  IsarCollection<dynamic> col,
  Id id,
  MaintenanceTicketModel object,
) {
  object.isarId = id;
}

extension MaintenanceTicketModelQueryWhereSort
    on QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QWhere> {
  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterWhere>
  anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MaintenanceTicketModelQueryWhere
    on
        QueryBuilder<
          MaintenanceTicketModel,
          MaintenanceTicketModel,
          QWhereClause
        > {
  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterWhereClause
  >
  isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(lower: isarId, upper: isarId),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterWhereClause
  >
  isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterWhereClause
  >
  isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterWhereClause
  >
  isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterWhereClause
  >
  isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerIsarId,
          includeLower: includeLower,
          upper: upperIsarId,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension MaintenanceTicketModelQueryFilter
    on
        QueryBuilder<
          MaintenanceTicketModel,
          MaintenanceTicketModel,
          QFilterCondition
        > {
  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  customerNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'customerName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  customerNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'customerName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  customerNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'customerName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  customerNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'customerName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  customerNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'customerName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  customerNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'customerName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  customerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'customerName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  customerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'customerName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  customerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'customerName', value: ''),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  customerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'customerName', value: ''),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  deviceModelEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'deviceModel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  deviceModelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'deviceModel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  deviceModelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'deviceModel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  deviceModelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'deviceModel',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  deviceModelStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'deviceModel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  deviceModelEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'deviceModel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  deviceModelContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'deviceModel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  deviceModelMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'deviceModel',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  deviceModelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'deviceModel', value: ''),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  deviceModelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'deviceModel', value: ''),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'id'),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'id'),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idLessThan(String? value, {bool include = false, bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'id',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'id',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: ''),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'id', value: ''),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  isWhatsAppSentEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isWhatsAppSent', value: value),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isarId', value: value),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  isarIdGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'isarId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  isarIdLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'isarId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'isarId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  issueDescriptionEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'issueDescription',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  issueDescriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'issueDescription',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  issueDescriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'issueDescription',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  issueDescriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'issueDescription',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  issueDescriptionStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'issueDescription',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  issueDescriptionEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'issueDescription',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  issueDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'issueDescription',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  issueDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'issueDescription',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  issueDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'issueDescription', value: ''),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  issueDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'issueDescription', value: ''),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  phoneNumberEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'phoneNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  phoneNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'phoneNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  phoneNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'phoneNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  phoneNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'phoneNumber',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  phoneNumberStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'phoneNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  phoneNumberEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'phoneNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  phoneNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'phoneNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  phoneNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'phoneNumber',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'phoneNumber', value: ''),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'phoneNumber', value: ''),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  receivedDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'receivedDate', value: value),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  receivedDateGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'receivedDate',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  receivedDateLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'receivedDate',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  receivedDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'receivedDate',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  statusValueEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'statusValue',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  statusValueGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'statusValue',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  statusValueLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'statusValue',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  statusValueBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'statusValue',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  statusValueStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'statusValue',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  statusValueEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'statusValue',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  statusValueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'statusValue',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  statusValueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'statusValue',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  statusValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'statusValue', value: ''),
      );
    });
  }

  QueryBuilder<
    MaintenanceTicketModel,
    MaintenanceTicketModel,
    QAfterFilterCondition
  >
  statusValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'statusValue', value: ''),
      );
    });
  }
}

extension MaintenanceTicketModelQueryObject
    on
        QueryBuilder<
          MaintenanceTicketModel,
          MaintenanceTicketModel,
          QFilterCondition
        > {}

extension MaintenanceTicketModelQueryLinks
    on
        QueryBuilder<
          MaintenanceTicketModel,
          MaintenanceTicketModel,
          QFilterCondition
        > {}

extension MaintenanceTicketModelQuerySortBy
    on QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QSortBy> {
  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByDeviceModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceModel', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByDeviceModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceModel', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByIsWhatsAppSent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWhatsAppSent', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByIsWhatsAppSentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWhatsAppSent', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByIssueDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDescription', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByIssueDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDescription', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByReceivedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedDate', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByReceivedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedDate', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByStatusValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusValue', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  sortByStatusValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusValue', Sort.desc);
    });
  }
}

extension MaintenanceTicketModelQuerySortThenBy
    on
        QueryBuilder<
          MaintenanceTicketModel,
          MaintenanceTicketModel,
          QSortThenBy
        > {
  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByDeviceModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceModel', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByDeviceModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceModel', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByIsWhatsAppSent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWhatsAppSent', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByIsWhatsAppSentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWhatsAppSent', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByIssueDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDescription', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByIssueDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDescription', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByReceivedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedDate', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByReceivedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedDate', Sort.desc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByStatusValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusValue', Sort.asc);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QAfterSortBy>
  thenByStatusValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusValue', Sort.desc);
    });
  }
}

extension MaintenanceTicketModelQueryWhereDistinct
    on QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QDistinct> {
  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QDistinct>
  distinctByCustomerName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QDistinct>
  distinctByDeviceModel({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deviceModel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QDistinct>
  distinctById({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QDistinct>
  distinctByIsWhatsAppSent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isWhatsAppSent');
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QDistinct>
  distinctByIssueDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'issueDescription',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QDistinct>
  distinctByPhoneNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QDistinct>
  distinctByReceivedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'receivedDate');
    });
  }

  QueryBuilder<MaintenanceTicketModel, MaintenanceTicketModel, QDistinct>
  distinctByStatusValue({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statusValue', caseSensitive: caseSensitive);
    });
  }
}

extension MaintenanceTicketModelQueryProperty
    on
        QueryBuilder<
          MaintenanceTicketModel,
          MaintenanceTicketModel,
          QQueryProperty
        > {
  QueryBuilder<MaintenanceTicketModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<MaintenanceTicketModel, String, QQueryOperations>
  customerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerName');
    });
  }

  QueryBuilder<MaintenanceTicketModel, String, QQueryOperations>
  deviceModelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deviceModel');
    });
  }

  QueryBuilder<MaintenanceTicketModel, String?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MaintenanceTicketModel, bool, QQueryOperations>
  isWhatsAppSentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isWhatsAppSent');
    });
  }

  QueryBuilder<MaintenanceTicketModel, String, QQueryOperations>
  issueDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'issueDescription');
    });
  }

  QueryBuilder<MaintenanceTicketModel, String, QQueryOperations>
  phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }

  QueryBuilder<MaintenanceTicketModel, DateTime, QQueryOperations>
  receivedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'receivedDate');
    });
  }

  QueryBuilder<MaintenanceTicketModel, String, QQueryOperations>
  statusValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statusValue');
    });
  }
}
