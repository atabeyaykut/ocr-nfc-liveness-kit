.class public final Lu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/e;
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrc/e;",
        "Lx9/l<",
        "Ljava/lang/Throwable;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lrc/d;

.field public final b:Lnc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/i<",
            "Lrc/b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrc/d;Lnc/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/d;->a:Lrc/d;

    iput-object p2, p0, Lu/d;->b:Lnc/i;

    return-void
.end method


# virtual methods
.method public final a(Lvc/e;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-boolean p1, p1, Lvc/e;->n:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lu/d;->b:Lnc/i;

    .line 10
    .line 11
    invoke-interface {p2, p1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b(Lrc/b0;)V
    .locals 1

    iget-object v0, p0, Lu/d;->b:Lnc/i;

    invoke-interface {v0, p1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lu/d;->a:Lrc/d;

    .line 4
    .line 5
    invoke-interface {p1}, Lrc/d;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 9
    .line 10
    return-object p1
.end method
