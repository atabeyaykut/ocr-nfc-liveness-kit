.class public final Lf0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/b;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf0/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lh5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Path;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf0/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    if-ltz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lf0/s;

    .line 18
    .line 19
    sget-object v3, Lp0/g;->a:Lp0/g$a;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-boolean v3, v2, Lf0/s;->a:Z

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v3, v2, Lf0/s;->d:Lg0/c;

    .line 29
    .line 30
    invoke-virtual {v3}, Lg0/c;->l()F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget-object v4, v2, Lf0/s;->e:Lg0/c;

    .line 35
    .line 36
    invoke-virtual {v4}, Lg0/c;->l()F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget-object v2, v2, Lf0/s;->f:Lg0/c;

    .line 41
    .line 42
    invoke-virtual {v2}, Lg0/c;->l()F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/high16 v5, 0x42c80000    # 100.0f

    .line 47
    .line 48
    div-float/2addr v3, v5

    .line 49
    div-float/2addr v4, v5

    .line 50
    const/high16 v5, 0x43b40000    # 360.0f

    .line 51
    .line 52
    div-float/2addr v2, v5

    .line 53
    invoke-static {p1, v3, v4, v2}, Lp0/g;->a(Landroid/graphics/Path;FFF)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-void
.end method

.method public final c(Lh5/k;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lf0/b;->a:Ljava/lang/Object;

    check-cast v0, Lh5/l;

    sget-object v1, Lm4/d;->k:Ln3/a;

    invoke-virtual {p1}, Lh5/k;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lh5/k;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-virtual {v0, p1}, Lh5/l;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lh5/k;->h()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lh5/l;->c(Ljava/lang/Exception;)Z

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
