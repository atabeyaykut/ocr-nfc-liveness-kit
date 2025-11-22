.class public final Lga/l0$c$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/l0$c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lma/n0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/l0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/l0$c<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/l0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/l0$c<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/l0$c$b;->a:Lga/l0$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lga/l0$c$b;->a:Lga/l0$c;

    invoke-virtual {v0}, Lga/l0$a;->s()Lga/l0;

    move-result-object v1

    invoke-virtual {v1}, Lga/l0;->s()Lma/l0;

    move-result-object v1

    invoke-interface {v1}, Lma/l0;->f()Lma/n0;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lga/l0$a;->s()Lga/l0;

    move-result-object v0

    invoke-virtual {v0}, Lga/l0;->s()Lma/l0;

    move-result-object v0

    sget-object v1, Lna/h$a;->a:Lna/h$a$a;

    invoke-static {v0, v1}, Lob/h;->d(Lma/l0;Lna/h;)Lpa/n0;

    move-result-object v1

    :cond_0
    return-object v1
.end method
