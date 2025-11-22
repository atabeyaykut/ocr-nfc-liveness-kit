.class public final Ln0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lo0/c;Ld0/f;Z)Lj0/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lj0/b;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lp0/g;->c()F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    :goto_0
    sget-object v1, Ln0/i;->a:Ln0/i;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p0, p1, p2, v1, v2}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Lj0/b;-><init>(Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static b(Lo0/d;Ld0/f;)Lj0/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lj0/d;

    .line 2
    .line 3
    sget-object v1, Ln0/o;->a:Ln0/o;

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p0, p1, v2, v1, v3}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Lj0/d;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static c(Lo0/d;Ld0/f;)Lj0/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lj0/f;

    invoke-static {}, Lp0/g;->c()F

    move-result v1

    sget-object v2, Ln0/w;->a:Ln0/w;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Ln0/r;->a(Lo0/c;Ld0/f;FLn0/h0;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Lj0/f;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method
