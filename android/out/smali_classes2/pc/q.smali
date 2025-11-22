.class public final Lpc/q;
.super Lpc/h;
.source "SourceFile"

# interfaces
.implements Lpc/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/h<",
        "TE;>;",
        "Lpc/r<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lp9/f;Lpc/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lpc/h;-><init>(Lp9/f;Lpc/a;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    invoke-super {p0}, Lnc/a;->b()Z

    move-result v0

    return v0
.end method

.method public final j0(ZLjava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    invoke-interface {v0, p2}, Lpc/y;->s(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lnc/a;->b:Lp9/f;

    invoke-static {p1, p2}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final k0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ll9/m;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iget-object v0, p0, Lpc/h;->c:Lpc/g;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lpc/y;->s(Ljava/lang/Throwable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
