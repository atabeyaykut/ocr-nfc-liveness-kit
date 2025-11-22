.class public final Ld0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ld0/r<",
        "Ld0/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld0/i;->a:Landroid/content/Context;

    iput-object p2, p0, Ld0/i;->b:Ljava/lang/String;

    iput-object p3, p0, Ld0/i;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ld0/i;->c:Ljava/lang/String;

    iget-object v1, p0, Ld0/i;->a:Landroid/content/Context;

    iget-object v2, p0, Ld0/i;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Ld0/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ld0/r;

    move-result-object v0

    return-object v0
.end method
