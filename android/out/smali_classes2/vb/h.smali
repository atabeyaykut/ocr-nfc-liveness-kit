.class public final Lvb/h;
.super Lvb/a;
.source "SourceFile"


# instance fields
.field public final b:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Lvb/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbc/l;Lx9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbc/l;",
            "Lx9/a<",
            "+",
            "Lvb/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lvb/a;-><init>()V

    new-instance v0, Lvb/h$a;

    invoke-direct {v0, p2}, Lvb/h$a;-><init>(Lx9/a;)V

    invoke-interface {p1, v0}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p1

    iput-object p1, p0, Lvb/h;->b:Lbc/i;

    return-void
.end method


# virtual methods
.method public final i()Lvb/i;
    .locals 1

    iget-object v0, p0, Lvb/h;->b:Lbc/i;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvb/i;

    return-object v0
.end method
