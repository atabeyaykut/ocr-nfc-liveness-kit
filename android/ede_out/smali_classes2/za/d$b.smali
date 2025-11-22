.class public final Lza/d$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/d;-><init>(Lp4/g7;Lcb/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Llb/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/d;


# direct methods
.method public constructor <init>(Lza/d;)V
    .locals 0

    iput-object p1, p0, Lza/d$b;->a:Lza/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lza/d$b;->a:Lza/d;

    .line 2
    .line 3
    iget-object v0, v0, Lza/d;->b:Lcb/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lcb/a;->c()Llb/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Llb/b;->b()Llb/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method
