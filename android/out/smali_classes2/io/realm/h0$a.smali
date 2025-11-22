.class public final enum Lio/realm/h0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/h0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lio/realm/h0$a;

.field public static final enum d:Lio/realm/h0$a;

.field public static final enum e:Lio/realm/h0$a;

.field public static final enum f:Lio/realm/h0$a;

.field public static final enum g:Lio/realm/h0$a;

.field public static final enum h:Lio/realm/h0$a;

.field public static final enum j:Lio/realm/h0$a;

.field public static final enum k:Lio/realm/h0$a;

.field public static final enum l:Lio/realm/h0$a;

.field public static final enum m:Lio/realm/h0$a;

.field public static final enum n:Lio/realm/h0$a;

.field public static final enum p:Lio/realm/h0$a;

.field public static final q:[Lio/realm/h0$a;

.field public static final synthetic r:[Lio/realm/h0$a;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lio/realm/RealmFieldType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/realm/h0$a;

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-class v2, Ljava/lang/Long;

    const-string v3, "INTEGER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v0, Lio/realm/h0$a;->c:Lio/realm/h0$a;

    new-instance v1, Lio/realm/h0$a;

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-class v3, Ljava/lang/Boolean;

    const-string v5, "BOOLEAN"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v1, Lio/realm/h0$a;->d:Lio/realm/h0$a;

    new-instance v2, Lio/realm/h0$a;

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-class v5, Ljava/lang/String;

    const-string v7, "STRING"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v2, Lio/realm/h0$a;->e:Lio/realm/h0$a;

    new-instance v3, Lio/realm/h0$a;

    sget-object v5, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const-class v7, [Ljava/lang/Byte;

    const-string v9, "BINARY"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v3, Lio/realm/h0$a;->f:Lio/realm/h0$a;

    new-instance v5, Lio/realm/h0$a;

    sget-object v7, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-class v9, Ljava/util/Date;

    const-string v11, "DATE"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v5, Lio/realm/h0$a;->g:Lio/realm/h0$a;

    new-instance v7, Lio/realm/h0$a;

    sget-object v9, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-class v11, Ljava/lang/Float;

    const-string v13, "FLOAT"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v7, Lio/realm/h0$a;->h:Lio/realm/h0$a;

    new-instance v9, Lio/realm/h0$a;

    sget-object v11, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const-class v13, Ljava/lang/Double;

    const-string v15, "DOUBLE"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v9, Lio/realm/h0$a;->j:Lio/realm/h0$a;

    new-instance v11, Lio/realm/h0$a;

    sget-object v13, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    const-class v15, Lorg/bson/types/Decimal128;

    const-string v14, "DECIMAL128"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v11, Lio/realm/h0$a;->k:Lio/realm/h0$a;

    new-instance v13, Lio/realm/h0$a;

    sget-object v14, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    const-class v15, Lorg/bson/types/ObjectId;

    const-string v12, "OBJECT_ID"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v13, Lio/realm/h0$a;->l:Lio/realm/h0$a;

    new-instance v12, Lio/realm/h0$a;

    sget-object v14, Lio/realm/RealmFieldType;->TYPED_LINK:Lio/realm/RealmFieldType;

    const-class v15, Lio/realm/s0;

    const-string v10, "OBJECT"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v14, v15}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v12, Lio/realm/h0$a;->m:Lio/realm/h0$a;

    new-instance v10, Lio/realm/h0$a;

    sget-object v14, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    const-class v15, Ljava/util/UUID;

    const-string v8, "UUID"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v14, v15}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v10, Lio/realm/h0$a;->n:Lio/realm/h0$a;

    new-instance v8, Lio/realm/h0$a;

    const/4 v14, 0x0

    const-string v15, "NULL"

    const/16 v6, 0xb

    invoke-direct {v8, v15, v6, v14, v14}, Lio/realm/h0$a;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v8, Lio/realm/h0$a;->p:Lio/realm/h0$a;

    const/16 v14, 0xc

    new-array v14, v14, [Lio/realm/h0$a;

    aput-object v0, v14, v4

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v2, v14, v0

    const/4 v0, 0x3

    aput-object v3, v14, v0

    const/4 v0, 0x4

    aput-object v5, v14, v0

    const/4 v0, 0x5

    aput-object v7, v14, v0

    const/4 v0, 0x6

    aput-object v9, v14, v0

    const/4 v0, 0x7

    aput-object v11, v14, v0

    const/16 v0, 0x8

    aput-object v13, v14, v0

    const/16 v0, 0x9

    aput-object v12, v14, v0

    const/16 v0, 0xa

    aput-object v10, v14, v0

    aput-object v8, v14, v6

    sput-object v14, Lio/realm/h0$a;->r:[Lio/realm/h0$a;

    const/16 v0, 0x13

    new-array v0, v0, [Lio/realm/h0$a;

    sput-object v0, Lio/realm/h0$a;->q:[Lio/realm/h0$a;

    invoke-static {}, Lio/realm/h0$a;->values()[Lio/realm/h0$a;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v2, v0, v4

    sget-object v3, Lio/realm/h0$a;->p:Lio/realm/h0$a;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lio/realm/h0$a;->b:Lio/realm/RealmFieldType;

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v3

    sget-object v5, Lio/realm/h0$a;->q:[Lio/realm/h0$a;

    aput-object v2, v5, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lio/realm/h0$a;->q:[Lio/realm/h0$a;

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v1

    sget-object v2, Lio/realm/h0$a;->m:Lio/realm/h0$a;

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmFieldType;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/realm/h0$a;->b:Lio/realm/RealmFieldType;

    iput-object p4, p0, Lio/realm/h0$a;->a:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/h0$a;
    .locals 1

    const-class v0, Lio/realm/h0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/h0$a;

    return-object p0
.end method

.method public static values()[Lio/realm/h0$a;
    .locals 1

    sget-object v0, Lio/realm/h0$a;->r:[Lio/realm/h0$a;

    invoke-virtual {v0}, [Lio/realm/h0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/h0$a;

    return-object v0
.end method
