.class public final Lnc/j1;
.super Lnc/t1;
.source "SourceFile"


# instance fields
.field public final c:Lp9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp9/f;Lx9/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/f;",
            "Lx9/p<",
            "-",
            "Lnc/a0;",
            "-",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnc/t1;-><init>(Lp9/f;Z)V

    invoke-static {p0, p0, p2}, Lc5/w;->g(Ljava/lang/Object;Lp9/d;Lx9/p;)Lp9/d;

    move-result-object p1

    iput-object p1, p0, Lnc/j1;->c:Lp9/d;

    return-void
.end method


# virtual methods
.method public final c0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnc/j1;->c:Lp9/d;

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ll9/m;->a:Ll9/m;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, La2/b;->m(Lp9/d;Ljava/lang/Object;Lx9/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lnc/a;->resumeWith(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method
