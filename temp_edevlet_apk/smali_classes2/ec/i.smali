.class public final Lec/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lec/i;

.field public static final b:Lec/c;

.field public static final c:Lec/a;

.field public static final d:Lec/f;

.field public static final e:Lec/f;

.field public static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lma/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lec/i;

    invoke-direct {v0}, Lec/i;-><init>()V

    sput-object v0, Lec/i;->a:Lec/i;

    sget-object v0, Lec/c;->a:Lec/c;

    sput-object v0, Lec/i;->b:Lec/c;

    new-instance v0, Lec/a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "unknown class"

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<Error class: %s>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(this, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Llb/f;->v(Ljava/lang/String;)Llb/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lec/a;-><init>(Llb/f;)V

    sput-object v0, Lec/i;->c:Lec/a;

    sget-object v0, Lec/h;->h:Lec/h;

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    move-result-object v0

    sput-object v0, Lec/i;->d:Lec/f;

    sget-object v0, Lec/h;->x:Lec/h;

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    move-result-object v0

    sput-object v0, Lec/i;->e:Lec/f;

    new-instance v0, Lec/d;

    invoke-direct {v0}, Lec/d;-><init>()V

    invoke-static {v0}, Lx5/a;->r(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lec/i;->f:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs a(IZ[Ljava/lang/String;)Lec/e;
    .locals 1

    const-string v0, "kind"

    invoke-static {p0, v0}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p1, Lec/j;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lec/j;-><init>(I[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lec/e;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lec/e;-><init>(I[Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static final varargs b(I[Ljava/lang/String;)Lec/e;
    .locals 1

    const-string v0, "kind"

    invoke-static {p0, v0}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lec/i;->a(IZ[Ljava/lang/String;)Lec/e;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs c(Lec/h;[Ljava/lang/String;)Lec/f;
    .locals 3

    .line 1
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "formatParams"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    array-length v1, p1

    .line 16
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, [Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0, v1}, Lec/i;->d(Lec/h;[Ljava/lang/String;)Lec/g;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    array-length v2, p1

    .line 27
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, [Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p0, v0, v1, p1}, Lec/i;->e(Lec/h;Ljava/util/List;Lcc/c1;[Ljava/lang/String;)Lec/f;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static varargs d(Lec/h;[Ljava/lang/String;)Lec/g;
    .locals 2

    const-string v0, "formatParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lec/g;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lec/g;-><init>(Lec/h;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs e(Lec/h;Ljava/util/List;Lcc/c1;[Ljava/lang/String;)Lec/f;
    .locals 8

    const-string v0, "formatParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lec/f;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lec/i;->b(I[Ljava/lang/String;)Lec/e;

    move-result-object v3

    const/4 v6, 0x0

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, [Ljava/lang/String;

    move-object v1, v0

    move-object v2, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lec/f;-><init>(Lcc/c1;Lvb/i;Lec/h;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object v0
.end method

.method public static final f(Lma/j;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    instance-of v0, p0, Lec/a;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lma/j;->b()Lma/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lec/a;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lec/i;->b:Lec/c;

    .line 16
    .line 17
    if-ne p0, v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method
