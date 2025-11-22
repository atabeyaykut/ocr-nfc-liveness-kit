.class public final Ll7/f$a;
.super Lj7/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/f;->b(Lj7/h;Lp7/a;)Lj7/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj7/u<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lj7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/u<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lj7/h;

.field public final synthetic e:Lp7/a;

.field public final synthetic f:Ll7/f;


# direct methods
.method public constructor <init>(Ll7/f;ZZLj7/h;Lp7/a;)V
    .locals 0

    iput-object p1, p0, Ll7/f$a;->f:Ll7/f;

    iput-boolean p2, p0, Ll7/f$a;->b:Z

    iput-boolean p3, p0, Ll7/f$a;->c:Z

    iput-object p4, p0, Ll7/f$a;->d:Lj7/h;

    iput-object p5, p0, Ll7/f$a;->e:Lp7/a;

    invoke-direct {p0}, Lj7/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lq7/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ll7/f$a;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lq7/a;->P()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Ll7/f$a;->a:Lj7/u;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Ll7/f$a;->e:Lp7/a;

    .line 16
    .line 17
    iget-object v1, p0, Ll7/f$a;->d:Lj7/h;

    .line 18
    .line 19
    iget-object v2, p0, Ll7/f$a;->f:Ll7/f;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Lj7/h;->c(Lj7/v;Lp7/a;)Lj7/u;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Ll7/f$a;->a:Lj7/u;

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, p1}, Lj7/u;->a(Lq7/a;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public final b(Lq7/b;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/b;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ll7/f$a;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lq7/b;->j()Lq7/b;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Ll7/f$a;->a:Lj7/u;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Ll7/f$a;->e:Lp7/a;

    .line 15
    .line 16
    iget-object v1, p0, Ll7/f$a;->d:Lj7/h;

    .line 17
    .line 18
    iget-object v2, p0, Ll7/f$a;->f:Ll7/f;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v0}, Lj7/h;->c(Lj7/v;Lp7/a;)Lj7/u;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Ll7/f$a;->a:Lj7/u;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, p1, p2}, Lj7/u;->b(Lq7/b;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
