.class public abstract Led/l;
.super Led/k;
.source "SourceFile"


# instance fields
.field public final b:Led/k;


# direct methods
.method public constructor <init>(Led/t;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Led/k;-><init>()V

    iput-object p1, p0, Led/l;->b:Led/k;

    return-void
.end method


# virtual methods
.method public final a(Led/z;)Led/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Led/l;->b:Led/k;

    invoke-virtual {v0, p1}, Led/k;->a(Led/z;)Led/h0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Led/z;Led/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Led/l;->b:Led/k;

    invoke-virtual {v0, p1, p2}, Led/k;->b(Led/z;Led/z;)V

    return-void
.end method

.method public final c(Led/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Led/l;->b:Led/k;

    invoke-virtual {v0, p1}, Led/k;->c(Led/z;)V

    return-void
.end method

.method public final d(Led/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Led/l;->b:Led/k;

    invoke-virtual {v0, p1}, Led/k;->d(Led/z;)V

    return-void
.end method

.method public final g(Led/z;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Led/z;",
            ")",
            "Ljava/util/List<",
            "Led/z;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "dir"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Led/l;->b:Led/k;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Led/k;->g(Led/z;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Iterable;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Led/z;

    .line 34
    .line 35
    const-string v2, "path"

    .line 36
    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v1, 0x1

    .line 49
    if-le p1, v1, :cond_1

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-object v0
.end method

.method public final i(Led/z;)Led/j;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Led/l;->b:Led/k;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Led/k;->i(Led/z;)Led/j;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object v3, p1, Led/j;->c:Led/z;

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    iget-boolean v1, p1, Led/j;->a:Z

    .line 22
    .line 23
    iget-boolean v2, p1, Led/j;->b:Z

    .line 24
    .line 25
    iget-object v4, p1, Led/j;->d:Ljava/lang/Long;

    .line 26
    .line 27
    iget-object v5, p1, Led/j;->e:Ljava/lang/Long;

    .line 28
    .line 29
    iget-object v6, p1, Led/j;->f:Ljava/lang/Long;

    .line 30
    .line 31
    iget-object v7, p1, Led/j;->g:Ljava/lang/Long;

    .line 32
    .line 33
    iget-object v8, p1, Led/j;->h:Ljava/util/Map;

    .line 34
    .line 35
    const-string p1, "extras"

    .line 36
    .line 37
    invoke-static {v8, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Led/j;

    .line 41
    .line 42
    move-object v0, p1

    .line 43
    invoke-direct/range {v0 .. v8}, Led/j;-><init>(ZZLed/z;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method

.method public final j(Led/z;)Led/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Led/l;->b:Led/k;

    invoke-virtual {v0, p1}, Led/k;->j(Led/z;)Led/i;

    move-result-object p1

    return-object p1
.end method

.method public final l(Led/z;)Led/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Led/l;->b:Led/k;

    invoke-virtual {v0, p1}, Led/k;->l(Led/z;)Led/j0;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v1

    invoke-interface {v1}, Lda/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Led/l;->b:Led/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
