.class public final Lcom/google/android/gms/internal/clearcut/i2;
.super Ln3/c;
.source "SourceFile"

# interfaces
.implements Lk3/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c<",
        "Ln3/a$c$c;",
        ">;",
        "Lk3/c;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lk3/a;->k:Ln3/a;

    new-instance v1, Lc5/v;

    invoke-direct {v1}, Lc5/v;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Ln3/c;-><init>(Landroid/content/Context;Ln3/a;Ln3/a$c;Lc5/v;)V

    return-void
.end method
