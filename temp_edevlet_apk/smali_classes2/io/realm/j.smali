.class public final Lio/realm/j;
.super Lio/realm/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/x<",
        "Lorg/bson/types/Decimal128;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/a;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "Lorg/bson/types/Decimal128;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/realm/x;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    check-cast p1, Lorg/bson/types/Decimal128;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsList;->d(Lorg/bson/types/Decimal128;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lorg/bson/types/Decimal128;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "org.bson.types.Decimal128"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->s(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bson/types/Decimal128;

    return-object p1
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 2

    int-to-long v0, p1

    check-cast p2, Lorg/bson/types/Decimal128;

    iget-object p1, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    invoke-virtual {p1, v0, v1, p2}, Lio/realm/internal/OsList;->w(JLorg/bson/types/Decimal128;)V

    return-void
.end method

.method public final h(ILjava/lang/Object;)V
    .locals 2

    int-to-long v0, p1

    check-cast p2, Lorg/bson/types/Decimal128;

    iget-object p1, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    invoke-virtual {p1, v0, v1, p2}, Lio/realm/internal/OsList;->M(JLorg/bson/types/Decimal128;)V

    return-void
.end method
