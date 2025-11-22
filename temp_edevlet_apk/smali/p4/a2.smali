.class public final Lp4/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp4/o7;

.field public final b:Ljava/lang/Boolean;

.field public final c:Lp4/k9;

.field public final d:Lp4/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp4/u0<",
            "Lp4/z7;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lp4/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp4/u0<",
            "Lp4/a8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lp4/z1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lp4/z1;->a:Lp4/o7;

    .line 5
    .line 6
    iput-object v0, p0, Lp4/a2;->a:Lp4/o7;

    .line 7
    .line 8
    iget-object v0, p1, Lp4/z1;->b:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object v0, p0, Lp4/a2;->b:Ljava/lang/Boolean;

    .line 11
    .line 12
    iget-object v0, p1, Lp4/z1;->c:Lp4/k9;

    .line 13
    .line 14
    iput-object v0, p0, Lp4/a2;->c:Lp4/k9;

    .line 15
    .line 16
    iget-object v0, p1, Lp4/z1;->d:Lp4/u0;

    .line 17
    .line 18
    iput-object v0, p0, Lp4/a2;->d:Lp4/u0;

    .line 19
    .line 20
    iget-object p1, p1, Lp4/z1;->e:Lp4/u0;

    .line 21
    .line 22
    iput-object p1, p0, Lp4/a2;->e:Lp4/u0;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp4/a2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp4/a2;

    iget-object v1, p1, Lp4/a2;->a:Lp4/o7;

    iget-object v3, p0, Lp4/a2;->a:Lp4/o7;

    invoke-static {v3, v1}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lp4/a2;->b:Ljava/lang/Boolean;

    iget-object v4, p1, Lp4/a2;->b:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v1}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp4/a2;->c:Lp4/k9;

    iget-object v3, p1, Lp4/a2;->c:Lp4/k9;

    invoke-static {v1, v3}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp4/a2;->d:Lp4/u0;

    iget-object v3, p1, Lp4/a2;->d:Lp4/u0;

    invoke-static {v1, v3}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp4/a2;->e:Lp4/u0;

    iget-object p1, p1, Lp4/a2;->e:Lp4/u0;

    invoke-static {v1, p1}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lp4/a2;->a:Lp4/o7;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v2, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iget-object v3, p0, Lp4/a2;->b:Ljava/lang/Boolean;

    .line 15
    .line 16
    aput-object v3, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    iget-object v2, p0, Lp4/a2;->c:Lp4/k9;

    .line 23
    .line 24
    aput-object v2, v0, v1

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    iget-object v2, p0, Lp4/a2;->d:Lp4/u0;

    .line 28
    .line 29
    aput-object v2, v0, v1

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    iget-object v2, p0, Lp4/a2;->e:Lp4/u0;

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0
.end method
