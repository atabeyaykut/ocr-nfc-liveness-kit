.class public final Lm7/b$a;
.super Lj7/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj7/u<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lm7/n;

.field public final b:Ll7/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll7/j<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj7/h;Ljava/lang/reflect/Type;Lj7/u;Ll7/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/h;",
            "Ljava/lang/reflect/Type;",
            "Lj7/u<",
            "TE;>;",
            "Ll7/j<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lj7/u;-><init>()V

    new-instance v0, Lm7/n;

    invoke-direct {v0, p1, p3, p2}, Lm7/n;-><init>(Lj7/h;Lj7/u;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lm7/b$a;->a:Lm7/n;

    iput-object p4, p0, Lm7/b$a;->b:Ll7/j;

    return-void
.end method


# virtual methods
.method public final a(Lq7/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lq7/a;->B()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lq7/a;->s()V

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lm7/b$a;->b:Ll7/j;

    invoke-interface {v0}, Ll7/j;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lq7/a;->a()V

    :goto_0
    invoke-virtual {p1}, Lq7/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lm7/b$a;->a:Lm7/n;

    invoke-virtual {v1, p1}, Lm7/n;->a(Lq7/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lq7/a;->e()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public final b(Lq7/b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Collection;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lq7/b;->j()Lq7/b;

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lq7/b;->b()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lm7/b$a;->a:Lm7/n;

    .line 27
    .line 28
    invoke-virtual {v1, p1, v0}, Lm7/n;->b(Lq7/b;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lq7/b;->e()V

    .line 33
    .line 34
    .line 35
    :goto_1
    return-void
.end method
