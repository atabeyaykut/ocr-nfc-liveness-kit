.class public final synthetic La0/a;
.super Lkotlin/jvm/internal/f;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/f;",
        "Lx9/a<",
        "Ll9/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lv/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "dismiss"

    return-object v0
.end method

.method public final getOwner()Lda/f;
    .locals 1

    const-class v0, Lv/e;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "dismiss()V"

    return-object v0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/a;->receiver:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Ll9/m;->a:Ll9/m;

    .line 9
    .line 10
    return-object v0
.end method
