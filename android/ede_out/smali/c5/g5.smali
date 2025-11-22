.class public final synthetic Lc5/g5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc5/v5;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lc5/v5;Landroid/os/Bundle;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/g5;->a:Lc5/v5;

    iput-object p2, p0, Lc5/g5;->b:Landroid/os/Bundle;

    iput-wide p3, p0, Lc5/g5;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lc5/g5;->a:Lc5/v5;

    iget-object v1, p0, Lc5/g5;->b:Landroid/os/Bundle;

    iget-wide v2, p0, Lc5/g5;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lc5/v5;->x(Landroid/os/Bundle;J)V

    return-void
.end method
