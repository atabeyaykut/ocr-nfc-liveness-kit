.class public final Lf0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/c;
.implements Lg0/a$a;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;

.field public final c:I

.field public final d:Lg0/c;

.field public final e:Lg0/c;

.field public final f:Lg0/c;


# direct methods
.method public constructor <init>(Ll0/b;Lk0/p;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf0/s;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p2, Lk0/p;->e:Z

    iput-boolean v0, p0, Lf0/s;->a:Z

    iget v0, p2, Lk0/p;->a:I

    iput v0, p0, Lf0/s;->c:I

    iget-object v0, p2, Lk0/p;->b:Lj0/b;

    invoke-virtual {v0}, Lj0/b;->c()Lg0/a;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lg0/c;

    iput-object v1, p0, Lf0/s;->d:Lg0/c;

    iget-object v1, p2, Lk0/p;->c:Lj0/b;

    invoke-virtual {v1}, Lj0/b;->c()Lg0/a;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lg0/c;

    iput-object v2, p0, Lf0/s;->e:Lg0/c;

    iget-object p2, p2, Lk0/p;->d:Lj0/b;

    invoke-virtual {p2}, Lj0/b;->c()Lg0/a;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lg0/c;

    iput-object v2, p0, Lf0/s;->f:Lg0/c;

    invoke-virtual {p1, v0}, Ll0/b;->e(Lg0/a;)V

    invoke-virtual {p1, v1}, Ll0/b;->e(Lg0/a;)V

    invoke-virtual {p1, p2}, Ll0/b;->e(Lg0/a;)V

    invoke-virtual {v0, p0}, Lg0/a;->a(Lg0/a$a;)V

    invoke-virtual {v1, p0}, Lg0/a;->a(Lg0/a$a;)V

    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lf0/s;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg0/a$a;

    invoke-interface {v1}, Lg0/a$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public final c(Lg0/a$a;)V
    .locals 1

    iget-object v0, p0, Lf0/s;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
