.class public final Lgd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgd/e;


# direct methods
.method public constructor <init>(Lgd/e;)V
    .locals 0

    iput-object p1, p0, Lgd/f;->a:Lgd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "BeaconManager"

    iget-object v1, p0, Lgd/f;->a:Lgd/e;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgd/e;->q:Z

    :try_start_0
    const-string v3, "API Performing settings sync to running service."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lgd/e;->a(ILgd/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "Failed to sync settings to service"

    invoke-static {v0, v1, v3}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
