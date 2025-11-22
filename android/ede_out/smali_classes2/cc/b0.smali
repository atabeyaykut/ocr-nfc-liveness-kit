.class public final Lcc/b0;
.super Lcc/l1;
.source "SourceFile"


# instance fields
.field public final b:[Lma/w0;

.field public final c:[Lcc/i1;

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>([Lma/w0;[Lcc/i1;Z)V
    .locals 1

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/l1;-><init>()V

    iput-object p1, p0, Lcc/b0;->b:[Lma/w0;

    iput-object p2, p0, Lcc/b0;->c:[Lcc/i1;

    iput-boolean p3, p0, Lcc/b0;->d:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcc/b0;->d:Z

    return v0
.end method

.method public final d(Lcc/e0;)Lcc/i1;
    .locals 4

    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    move-result-object p1

    invoke-interface {p1}, Lcc/c1;->n()Lma/g;

    move-result-object p1

    instance-of v0, p1, Lma/w0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lma/w0;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Lma/w0;->getIndex()I

    move-result v0

    iget-object v2, p0, Lcc/b0;->b:[Lma/w0;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-interface {v2}, Lma/w0;->i()Lcc/c1;

    move-result-object v2

    invoke-interface {p1}, Lma/w0;->i()Lcc/c1;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcc/b0;->c:[Lcc/i1;

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcc/b0;->c:[Lcc/i1;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
