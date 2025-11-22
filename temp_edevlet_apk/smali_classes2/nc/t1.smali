.class public Lnc/t1;
.super Lnc/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnc/a<",
        "Ll9/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lp9/f;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnc/a;-><init>(Lp9/f;Z)V

    return-void
.end method


# virtual methods
.method public final T(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lnc/a;->b:Lp9/f;

    invoke-static {v0, p1}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
