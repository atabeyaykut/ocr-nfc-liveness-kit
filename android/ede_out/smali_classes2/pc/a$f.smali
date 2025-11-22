.class public final Lpc/a$f;
.super Lnc/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final a:Lpc/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/s<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lpc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpc/a;Lpc/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/s<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lpc/a$f;->b:Lpc/a;

    invoke-direct {p0}, Lnc/c;-><init>()V

    iput-object p2, p0, Lpc/a$f;->a:Lpc/s;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lpc/a$f;->a:Lpc/s;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpc/a$f;->b:Lpc/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lpc/a$f;->a(Ljava/lang/Throwable;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoveReceiveOnCancel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lpc/a$f;->a:Lpc/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
