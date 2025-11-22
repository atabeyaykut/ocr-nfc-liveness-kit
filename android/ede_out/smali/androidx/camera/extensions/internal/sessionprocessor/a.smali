.class public final synthetic Landroidx/camera/extensions/internal/sessionprocessor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/media/ImageReader;


# direct methods
.method public synthetic constructor <init>(Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/a;->a:Landroid/media/ImageReader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/a;->a:Landroid/media/ImageReader;

    invoke-static {v0}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->b(Landroid/media/ImageReader;)V

    return-void
.end method
