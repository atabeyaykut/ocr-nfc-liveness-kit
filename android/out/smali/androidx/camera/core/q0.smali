.class public final synthetic Landroidx/camera/core/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic a:Landroidx/camera/core/Preview;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/camera/core/impl/PreviewConfig;

.field public final synthetic d:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/Preview;Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/q0;->a:Landroidx/camera/core/Preview;

    iput-object p2, p0, Landroidx/camera/core/q0;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/core/q0;->c:Landroidx/camera/core/impl/PreviewConfig;

    iput-object p4, p0, Landroidx/camera/core/q0;->d:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 6

    iget-object v0, p0, Landroidx/camera/core/q0;->a:Landroidx/camera/core/Preview;

    iget-object v1, p0, Landroidx/camera/core/q0;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/core/q0;->c:Landroidx/camera/core/impl/PreviewConfig;

    iget-object v3, p0, Landroidx/camera/core/q0;->d:Landroid/util/Size;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/camera/core/Preview;->a(Landroidx/camera/core/Preview;Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method
