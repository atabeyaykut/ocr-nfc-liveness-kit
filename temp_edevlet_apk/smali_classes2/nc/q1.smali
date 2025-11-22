.class public final Lnc/q1;
.super Lnc/f1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnc/f1;"
    }
.end annotation


# instance fields
.field public final e:Lnc/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnc/g1$a;)V
    .locals 0

    invoke-direct {p0}, Lnc/f1;-><init>()V

    iput-object p1, p0, Lnc/q1;->e:Lnc/j;

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lnc/f1;->K()Lnc/g1;

    move-result-object p1

    invoke-virtual {p1}, Lnc/g1;->S()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lnc/r;

    if-eqz v0, :cond_0

    check-cast p1, Lnc/r;

    iget-object p1, p1, Lnc/r;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lc5/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lnc/q1;->e:Lnc/j;

    invoke-virtual {v0, p1}, Lnc/j;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lnc/q1;->J(Ljava/lang/Throwable;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
