.class public final Lvb/h$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvb/h;-><init>(Lbc/l;Lx9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lvb/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "Lvb/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/a<",
            "+",
            "Lvb/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lvb/h$a;->a:Lx9/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lvb/h$a;->a:Lx9/a;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvb/i;

    instance-of v1, v0, Lvb/a;

    if-eqz v1, :cond_0

    check-cast v0, Lvb/a;

    invoke-virtual {v0}, Lvb/a;->h()Lvb/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method
