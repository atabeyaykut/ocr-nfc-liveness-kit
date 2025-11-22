.class public final Lio/realm/i0;
.super Lio/realm/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/x<",
        "Lio/realm/h0;",
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
            "Lio/realm/h0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/realm/x;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lio/realm/h0;

    iget-object v0, p0, Lio/realm/x;->a:Lio/realm/a;

    invoke-static {v0, p1}, Lio/realm/g;->c(Lio/realm/a;Lio/realm/h0;)Lio/realm/h0;

    move-result-object p1

    iget-object v0, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    invoke-virtual {p1}, Lio/realm/h0;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->j(J)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lio/realm/h0;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "java.util.RealmAny"

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

    check-cast p1, Lio/realm/internal/core/NativeRealmAny;

    if-nez p1, :cond_0

    new-instance p1, Lio/realm/internal/core/NativeRealmAny;

    invoke-direct {p1}, Lio/realm/internal/core/NativeRealmAny;-><init>()V

    :cond_0
    new-instance v0, Lio/realm/h0;

    iget-object v1, p0, Lio/realm/x;->a:Lio/realm/a;

    invoke-static {v1, p1}, Lio/realm/k0;->b(Lio/realm/a;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/k0;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/h0;-><init>(Lio/realm/k0;)V

    return-object v0
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lio/realm/x;->b(I)V

    check-cast p2, Lio/realm/h0;

    iget-object v0, p0, Lio/realm/x;->a:Lio/realm/a;

    invoke-static {v0, p2}, Lio/realm/g;->c(Lio/realm/a;Lio/realm/h0;)Lio/realm/h0;

    move-result-object p2

    int-to-long v0, p1

    invoke-virtual {p2}, Lio/realm/h0;->a()J

    move-result-wide p1

    iget-object v2, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    invoke-virtual {v2, v0, v1, p1, p2}, Lio/realm/internal/OsList;->C(JJ)V

    return-void
.end method

.method public final h(ILjava/lang/Object;)V
    .locals 3

    check-cast p2, Lio/realm/h0;

    iget-object v0, p0, Lio/realm/x;->a:Lio/realm/a;

    invoke-static {v0, p2}, Lio/realm/g;->c(Lio/realm/a;Lio/realm/h0;)Lio/realm/h0;

    move-result-object p2

    int-to-long v0, p1

    invoke-virtual {p2}, Lio/realm/h0;->a()J

    move-result-wide p1

    iget-object v2, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    invoke-virtual {v2, v0, v1, p1, p2}, Lio/realm/internal/OsList;->S(JJ)V

    return-void
.end method
