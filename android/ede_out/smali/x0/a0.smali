.class public final Lx0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb1/o$a;

.field public final synthetic b:Lx0/b0;


# direct methods
.method public constructor <init>(Lx0/b0;Lb1/o$a;)V
    .locals 0

    iput-object p1, p0, Lx0/a0;->b:Lx0/b0;

    iput-object p2, p0, Lx0/a0;->a:Lb1/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lx0/a0;->b:Lx0/b0;

    .line 2
    .line 3
    iget-object v1, p0, Lx0/a0;->a:Lb1/o$a;

    .line 4
    .line 5
    iget-object v0, v0, Lx0/b0;->f:Lb1/o$a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lx0/a0;->b:Lx0/b0;

    .line 17
    .line 18
    iget-object v1, p0, Lx0/a0;->a:Lb1/o$a;

    .line 19
    .line 20
    iget-object v2, v0, Lx0/b0;->b:Lx0/h$a;

    .line 21
    .line 22
    iget-object v0, v0, Lx0/b0;->g:Lx0/f;

    .line 23
    .line 24
    iget-object v1, v1, Lb1/o$a;->c:Lcom/bumptech/glide/load/data/d;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->d()Lv0/a;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v2, v0, p1, v1, v3}, Lx0/h$a;->q(Lv0/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lv0/a;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lx0/a0;->b:Lx0/b0;

    .line 2
    .line 3
    iget-object v1, p0, Lx0/a0;->a:Lb1/o$a;

    .line 4
    .line 5
    iget-object v0, v0, Lx0/b0;->f:Lb1/o$a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lx0/a0;->b:Lx0/b0;

    .line 17
    .line 18
    iget-object v1, p0, Lx0/a0;->a:Lb1/o$a;

    .line 19
    .line 20
    iget-object v2, v0, Lx0/b0;->a:Lx0/i;

    .line 21
    .line 22
    iget-object v2, v2, Lx0/i;->p:Lx0/l;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v3, v1, Lb1/o$a;->c:Lcom/bumptech/glide/load/data/d;

    .line 27
    .line 28
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/d;->d()Lv0/a;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Lx0/l;->c(Lv0/a;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iput-object p1, v0, Lx0/b0;->e:Ljava/lang/Object;

    .line 39
    .line 40
    iget-object p1, v0, Lx0/b0;->b:Lx0/h$a;

    .line 41
    .line 42
    invoke-interface {p1}, Lx0/h$a;->o()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v2, v0, Lx0/b0;->b:Lx0/h$a;

    .line 47
    .line 48
    iget-object v3, v1, Lb1/o$a;->a:Lv0/f;

    .line 49
    .line 50
    iget-object v4, v1, Lb1/o$a;->c:Lcom/bumptech/glide/load/data/d;

    .line 51
    .line 52
    invoke-interface {v4}, Lcom/bumptech/glide/load/data/d;->d()Lv0/a;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget-object v6, v0, Lx0/b0;->g:Lx0/f;

    .line 57
    .line 58
    move-object v0, v2

    .line 59
    move-object v1, v3

    .line 60
    move-object v2, p1

    .line 61
    move-object v3, v4

    .line 62
    move-object v4, v5

    .line 63
    move-object v5, v6

    .line 64
    invoke-interface/range {v0 .. v5}, Lx0/h$a;->n(Lv0/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lv0/a;Lv0/f;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    return-void
.end method
