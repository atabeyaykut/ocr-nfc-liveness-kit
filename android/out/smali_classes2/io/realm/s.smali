.class public final enum Lio/realm/s;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/s;",
        ">;",
        "Lio/realm/internal/p;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/realm/s;

.field public static final synthetic b:[Lio/realm/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/realm/s;

    invoke-direct {v0}, Lio/realm/s;-><init>()V

    sput-object v0, Lio/realm/s;->a:Lio/realm/s;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/s;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lio/realm/s;->b:[Lio/realm/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/s;
    .locals 1

    const-class v0, Lio/realm/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/s;

    return-object p0
.end method

.method public static values()[Lio/realm/s;
    .locals 1

    sget-object v0, Lio/realm/s;->b:[Lio/realm/s;

    invoke-virtual {v0}, [Lio/realm/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/s;

    return-object v0
.end method


# virtual methods
.method public final A(JJ)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final B(J)Ljava/util/Date;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final C(J)Z
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final E(J)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final G(Ljava/lang/String;)J
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This object was frozen while a query for it was still running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final H(J)Lio/realm/internal/OsMap;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final K(J)Lio/realm/internal/core/NativeRealmAny;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final L(J)Z
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final M(J)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final N(J)[B
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final O(J)D
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final P(J)J
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Q(J)F
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final R(J)Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final V(J)Lio/realm/RealmFieldType;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final W(JD)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final X(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/p;
    .locals 0

    sget-object p1, Lio/realm/internal/g;->a:Lio/realm/internal/g;

    return-object p1
.end method

.method public final Y()J
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n(J)Lorg/bson/types/Decimal128;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(JLjava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q()Lio/realm/internal/Table;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r(JLio/realm/RealmFieldType;)J
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(JZ)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final u(J)Lio/realm/internal/OsSet;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final v(J)Lorg/bson/types/ObjectId;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(J)Ljava/util/UUID;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final x(J)Z
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y(J)J
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z(J)Lio/realm/internal/OsList;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
