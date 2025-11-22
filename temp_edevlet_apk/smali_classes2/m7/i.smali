.class public final Lm7/i;
.super Lm7/j$b;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/lang/reflect/Field;

.field public final synthetic e:Z

.field public final synthetic f:Lj7/u;

.field public final synthetic g:Lj7/h;

.field public final synthetic h:Lp7/a;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLj7/u;Lj7/h;Lp7/a;Z)V
    .locals 0

    iput-object p4, p0, Lm7/i;->d:Ljava/lang/reflect/Field;

    iput-boolean p5, p0, Lm7/i;->e:Z

    iput-object p6, p0, Lm7/i;->f:Lj7/u;

    iput-object p7, p0, Lm7/i;->g:Lj7/h;

    iput-object p8, p0, Lm7/i;->h:Lp7/a;

    iput-boolean p9, p0, Lm7/i;->i:Z

    invoke-direct {p0, p1, p2, p3}, Lm7/j$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final a(Lq7/a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lm7/i;->f:Lj7/u;

    invoke-virtual {v0, p1}, Lj7/u;->a(Lq7/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lm7/i;->i:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lm7/i;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final b(Lq7/b;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/i;->d:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-boolean v0, p0, Lm7/i;->e:Z

    .line 8
    .line 9
    iget-object v1, p0, Lm7/i;->f:Lj7/u;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lm7/n;

    .line 15
    .line 16
    iget-object v2, p0, Lm7/i;->h:Lp7/a;

    .line 17
    .line 18
    iget-object v2, v2, Lp7/a;->b:Ljava/lang/reflect/Type;

    .line 19
    .line 20
    iget-object v3, p0, Lm7/i;->g:Lj7/h;

    .line 21
    .line 22
    invoke-direct {v0, v3, v1, v2}, Lm7/n;-><init>(Lj7/h;Lj7/u;Ljava/lang/reflect/Type;)V

    .line 23
    .line 24
    .line 25
    move-object v1, v0

    .line 26
    :goto_0
    invoke-virtual {v1, p1, p2}, Lj7/u;->b(Lq7/b;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lm7/j$b;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lm7/i;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
