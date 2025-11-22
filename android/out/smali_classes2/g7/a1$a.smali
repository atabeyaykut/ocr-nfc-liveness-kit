.class public final Lg7/a1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg7/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Lh5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh5/l<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh5/l;

    invoke-direct {v0}, Lh5/l;-><init>()V

    iput-object v0, p0, Lg7/a1$a;->b:Lh5/l;

    iput-object p1, p0, Lg7/a1$a;->a:Landroid/content/Intent;

    return-void
.end method
