.class public final Lgd/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgd/e;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgd/e;


# direct methods
.method public constructor <init>(Lgd/e;)V
    .locals 0

    iput-object p1, p0, Lgd/e$a;->a:Lgd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BeaconManager"

    const-string v2, "API Beacon parsers changed"

    invoke-static {v1, v2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lgd/e$a;->a:Lgd/e;

    invoke-virtual {v0}, Lgd/e;->b()V

    return-void
.end method
