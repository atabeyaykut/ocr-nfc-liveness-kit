.class public abstract Lh3/a;
.super Ln3/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c<",
        "Ln3/a$c$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Ln3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/a<",
            "Ln3/a$c$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ln3/a$f;

    invoke-direct {v0}, Ln3/a$f;-><init>()V

    new-instance v1, Lh3/b;

    invoke-direct {v1}, Lh3/b;-><init>()V

    new-instance v2, Ln3/a;

    const-string v3, "SmsRetriever.API"

    invoke-direct {v2, v3, v1, v0}, Ln3/a;-><init>(Ljava/lang/String;Ln3/a$a;Ln3/a$f;)V

    sput-object v2, Lh3/a;->k:Ln3/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lc5/v;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/v;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "Looper must not be null."

    .line 11
    .line 12
    invoke-static {v1, v2}, Lr3/r;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ln3/c$a;

    .line 16
    .line 17
    invoke-direct {v2, v0, v1}, Ln3/c$a;-><init>(Lc5/v;Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lh3/a;->k:Ln3/a;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, v0, v1, v2}, Ln3/c;-><init>(Landroid/app/Activity;Ln3/a;Ln3/a$c$c;Ln3/c$a;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
