.class public abstract Lio/realm/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/x0$b;,
        Lio/realm/x0$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/realm/x0$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/realm/x0$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/realm/x0$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/realm/x0$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lio/realm/a;

.field public final b:Lio/realm/internal/Table;

.field public final c:Lio/realm/internal/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lio/realm/x0$b;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v3, Lio/realm/x0$b;

    invoke-direct {v3}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    const-class v3, Ljava/lang/Short;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v4, Lio/realm/x0$b;

    invoke-direct {v4}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lio/realm/x0$b;

    invoke-direct {v4}, Lio/realm/x0$b;-><init>()V

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v6, Lio/realm/x0$b;

    invoke-direct {v6}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lio/realm/x0$b;

    invoke-direct {v6}, Lio/realm/x0$b;-><init>()V

    const-class v7, Ljava/lang/Long;

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v8, Lio/realm/x0$b;

    invoke-direct {v8}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lio/realm/x0$b;

    invoke-direct {v8}, Lio/realm/x0$b;-><init>()V

    const-class v9, Ljava/lang/Float;

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v10, Lio/realm/x0$b;

    invoke-direct {v10}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lio/realm/x0$b;

    invoke-direct {v8}, Lio/realm/x0$b;-><init>()V

    const-class v10, Ljava/lang/Double;

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    const-class v12, Ljava/lang/Boolean;

    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v13, Lio/realm/x0$b;

    invoke-direct {v13}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    const-class v13, Ljava/lang/Byte;

    invoke-virtual {v0, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    const-class v14, [B

    invoke-virtual {v0, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    const-class v15, Ljava/util/Date;

    invoke-virtual {v0, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v16, v15

    const-class v15, Lorg/bson/types/ObjectId;

    invoke-virtual {v0, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v17, v15

    const-class v15, Lorg/bson/types/Decimal128;

    invoke-virtual {v0, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v18, v15

    const-class v15, Ljava/util/UUID;

    invoke-virtual {v0, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v19, v15

    const-class v15, Lio/realm/h0;

    invoke-virtual {v0, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/realm/x0;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v20, v2

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v11, Lio/realm/x0$b;

    invoke-direct {v11}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v11, v16

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v11, v17

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v11, v18

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v11, v19

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/realm/x0;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v19, v15

    move-object/from16 v15, v20

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v15, Lio/realm/x0$b;

    invoke-direct {v15}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/x0$b;

    invoke-direct {v2}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v2, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v2, v18

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    move-object/from16 v2, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/realm/x0;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    const-class v2, Lio/realm/v0;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    const-class v2, Lio/realm/q0;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    const-class v2, Lio/realm/p0;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/realm/x0$b;

    invoke-direct {v1}, Lio/realm/x0$b;-><init>()V

    const-class v2, Lio/realm/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/realm/x0;->g:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lio/realm/a;Lio/realm/internal/Table;Lio/realm/internal/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/x0;->a:Lio/realm/a;

    iput-object p2, p0, Lio/realm/x0;->b:Lio/realm/internal/Table;

    iput-object p3, p0, Lio/realm/x0;->c:Lio/realm/internal/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/x0;->b:Lio/realm/internal/Table;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->h(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, -0x1

    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    return-wide v1

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    new-array v3, v3, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object p1, v3, v4

    .line 23
    .line 24
    invoke-virtual {v0}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object p1, v3, v0

    .line 30
    .line 31
    const-string p1, "Field name \'%s\' does not exist on schema for \'%s\'"

    .line 32
    .line 33
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method
