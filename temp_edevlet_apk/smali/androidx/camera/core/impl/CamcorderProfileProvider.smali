.class public interface abstract Landroidx/camera/core/impl/CamcorderProfileProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field public static final EMPTY:Landroidx/camera/core/impl/CamcorderProfileProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/CamcorderProfileProvider$1;

    invoke-direct {v0}, Landroidx/camera/core/impl/CamcorderProfileProvider$1;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/CamcorderProfileProvider;->EMPTY:Landroidx/camera/core/impl/CamcorderProfileProvider;

    return-void
.end method


# virtual methods
.method public abstract get(I)Landroidx/camera/core/impl/CamcorderProfileProxy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract hasProfile(I)Z
.end method
