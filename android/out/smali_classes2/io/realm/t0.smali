.class public final Lio/realm/t0;
.super Lio/realm/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/realm/x;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/realm/t0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lio/realm/s0;

    .line 3
    .line 4
    iget-object v1, p0, Lio/realm/x;->a:Lio/realm/a;

    .line 5
    .line 6
    iget-object v2, p0, Lio/realm/t0;->d:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1, v0, v2}, Lio/realm/g;->a(Lio/realm/a;Lio/realm/s0;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v1, v0}, Lio/realm/g;->d(Lio/realm/a;Lio/realm/s0;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-object v4, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    instance-of p1, p1, Lio/realm/p;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4}, Lio/realm/internal/OsList;->n()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    check-cast v1, Lio/realm/g0;

    .line 29
    .line 30
    invoke-static {v1, v0, v2, v3}, Lio/realm/g;->e(Lio/realm/g0;Lio/realm/s0;J)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v0, "Embedded objects are not supported by RealmLists of DynamicRealmObjects yet."

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-static {v1, v0}, Lio/realm/g;->b(Lio/realm/a;Lio/realm/s0;)Lio/realm/s0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_2
    check-cast v0, Lio/realm/internal/n;

    .line 49
    .line 50
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 55
    .line 56
    invoke-interface {p1}, Lio/realm/internal/p;->Y()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-virtual {v4, v0, v1}, Lio/realm/internal/OsList;->k(J)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 5

    if-eqz p1, :cond_1

    instance-of v0, p1, Lio/realm/s0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "java.lang.String"

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

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RealmList does not accept null values."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->r(J)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    iget-object v0, p0, Lio/realm/x;->a:Lio/realm/a;

    iget-object v1, p0, Lio/realm/x;->c:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/t0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/a;->g(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/s0;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should not reach here."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/x;->b(I)V

    .line 2
    .line 3
    .line 4
    move-object v0, p2

    .line 5
    check-cast v0, Lio/realm/s0;

    .line 6
    .line 7
    iget-object v1, p0, Lio/realm/x;->a:Lio/realm/a;

    .line 8
    .line 9
    iget-object v2, p0, Lio/realm/t0;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Lio/realm/g;->a(Lio/realm/a;Lio/realm/s0;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v1, v0}, Lio/realm/g;->d(Lio/realm/a;Lio/realm/s0;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-object v4, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    instance-of p2, p2, Lio/realm/p;

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    int-to-long p1, p1

    .line 28
    invoke-virtual {v4, p1, p2}, Lio/realm/internal/OsList;->o(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    check-cast v1, Lio/realm/g0;

    .line 33
    .line 34
    invoke-static {v1, v0, p1, p2}, Lio/realm/g;->e(Lio/realm/g0;Lio/realm/s0;J)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p2, "Embedded objects are not supported by RealmLists of DynamicRealmObjects yet."

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-static {v1, v0}, Lio/realm/g;->b(Lio/realm/a;Lio/realm/s0;)Lio/realm/s0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    check-cast v0, Lio/realm/internal/n;

    .line 53
    .line 54
    int-to-long p1, p1

    .line 55
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 60
    .line 61
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-virtual {v4, p1, p2, v0, v1}, Lio/realm/internal/OsList;->D(JJ)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method public final g(I)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should not reach here."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(ILjava/lang/Object;)V
    .locals 5

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Lio/realm/s0;

    .line 3
    .line 4
    iget-object v1, p0, Lio/realm/x;->a:Lio/realm/a;

    .line 5
    .line 6
    iget-object v2, p0, Lio/realm/t0;->d:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1, v0, v2}, Lio/realm/g;->a(Lio/realm/a;Lio/realm/s0;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v1, v0}, Lio/realm/g;->d(Lio/realm/a;Lio/realm/s0;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-object v4, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    instance-of p2, p2, Lio/realm/p;

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    int-to-long p1, p1

    .line 25
    invoke-virtual {v4, p1, p2}, Lio/realm/internal/OsList;->p(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    check-cast v1, Lio/realm/g0;

    .line 30
    .line 31
    invoke-static {v1, v0, p1, p2}, Lio/realm/g;->e(Lio/realm/g0;Lio/realm/s0;J)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p2, "Embedded objects are not supported by RealmLists of DynamicRealmObjects yet."

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-static {v1, v0}, Lio/realm/g;->b(Lio/realm/a;Lio/realm/s0;)Lio/realm/s0;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_2
    check-cast v0, Lio/realm/internal/n;

    .line 50
    .line 51
    int-to-long p1, p1

    .line 52
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 57
    .line 58
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    invoke-virtual {v4, p1, p2, v0, v1}, Lio/realm/internal/OsList;->T(JJ)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method
