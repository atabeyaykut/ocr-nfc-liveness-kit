.class public final Lnc/r1;
.super Lnc/f1;
.source "SourceFile"


# instance fields
.field public final e:Lp9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnc/j;)V
    .locals 0

    invoke-direct {p0}, Lnc/f1;-><init>()V

    iput-object p1, p0, Lnc/r1;->e:Lp9/d;

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Throwable;)V
    .locals 1

    sget-object p1, Ll9/m;->a:Ll9/m;

    iget-object v0, p0, Lnc/r1;->e:Lp9/d;

    invoke-interface {v0, p1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lnc/r1;->J(Ljava/lang/Throwable;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
