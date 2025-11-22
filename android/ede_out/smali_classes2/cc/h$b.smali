.class public final Lcc/h$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/h;-><init>(Lbc/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lcc/h$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcc/h;


# direct methods
.method public constructor <init>(Lcc/h;)V
    .locals 0

    iput-object p1, p0, Lcc/h$b;->a:Lcc/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcc/h$a;

    iget-object v1, p0, Lcc/h$b;->a:Lcc/h;

    invoke-virtual {v1}, Lcc/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcc/h$a;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
