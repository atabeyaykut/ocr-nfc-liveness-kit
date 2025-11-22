.class public final Lnc/a1;
.super Lnc/f1;
.source "SourceFile"


# instance fields
.field public final e:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Ljava/lang/Throwable;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx9/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnc/f1;-><init>()V

    iput-object p1, p0, Lnc/a1;->e:Lx9/l;

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnc/a1;->e:Lx9/l;

    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lnc/a1;->J(Ljava/lang/Throwable;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
