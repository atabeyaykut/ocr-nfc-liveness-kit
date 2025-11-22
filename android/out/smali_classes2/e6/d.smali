.class public final Le6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le6/d$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Le6/d$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/d;->a:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Le6/d;->b:Le6/d$a;

    return-void
.end method
