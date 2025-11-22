.class public final Lf0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/m;
.implements Lg0/a$a;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Z

.field public final c:Ld0/l;

.field public final d:Lg0/l;

.field public e:Z

.field public final f:Lf0/b;


# direct methods
.method public constructor <init>(Ld0/l;Ll0/b;Lk0/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf0/q;->a:Landroid/graphics/Path;

    new-instance v0, Lf0/b;

    invoke-direct {v0}, Lf0/b;-><init>()V

    iput-object v0, p0, Lf0/q;->f:Lf0/b;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p3, Lk0/n;->d:Z

    iput-boolean v0, p0, Lf0/q;->b:Z

    iput-object p1, p0, Lf0/q;->c:Ld0/l;

    iget-object p1, p3, Lk0/n;->c:Lj0/h;

    invoke-virtual {p1}, Lj0/h;->c()Lg0/a;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lg0/l;

    iput-object p3, p0, Lf0/q;->d:Lg0/l;

    invoke-virtual {p2, p1}, Ll0/b;->e(Lg0/a;)V

    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf0/q;->e:Z

    iget-object v0, p0, Lf0/q;->c:Ld0/l;

    invoke-virtual {v0}, Ld0/l;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf0/c;",
            ">;",
            "Ljava/util/List<",
            "Lf0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    move-object v0, p1

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lf0/c;

    .line 16
    .line 17
    instance-of v1, v0, Lf0/s;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lf0/s;

    .line 22
    .line 23
    iget v1, v0, Lf0/s;->c:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lf0/q;->f:Lf0/b;

    .line 29
    .line 30
    iget-object v1, v1, Lf0/b;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lf0/s;->c(Lg0/a$a;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, Lf0/q;->e:Z

    iget-object v1, p0, Lf0/q;->a:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lf0/q;->b:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lf0/q;->e:Z

    return-object v1

    :cond_1
    iget-object v0, p0, Lf0/q;->d:Lg0/l;

    invoke-virtual {v0}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lf0/q;->f:Lf0/b;

    invoke-virtual {v0, v1}, Lf0/b;->a(Landroid/graphics/Path;)V

    iput-boolean v2, p0, Lf0/q;->e:Z

    return-object v1
.end method
