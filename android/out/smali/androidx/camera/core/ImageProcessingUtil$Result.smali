.class final enum Landroidx/camera/core/ImageProcessingUtil$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageProcessingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/ImageProcessingUtil$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/ImageProcessingUtil$Result;

.field public static final enum ERROR_CONVERSION:Landroidx/camera/core/ImageProcessingUtil$Result;

.field public static final enum SUCCESS:Landroidx/camera/core/ImageProcessingUtil$Result;

.field public static final enum UNKNOWN:Landroidx/camera/core/ImageProcessingUtil$Result;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/camera/core/ImageProcessingUtil$Result;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/ImageProcessingUtil$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/ImageProcessingUtil$Result;->UNKNOWN:Landroidx/camera/core/ImageProcessingUtil$Result;

    new-instance v1, Landroidx/camera/core/ImageProcessingUtil$Result;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/ImageProcessingUtil$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/ImageProcessingUtil$Result;->SUCCESS:Landroidx/camera/core/ImageProcessingUtil$Result;

    new-instance v3, Landroidx/camera/core/ImageProcessingUtil$Result;

    const-string v5, "ERROR_CONVERSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/camera/core/ImageProcessingUtil$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/camera/core/ImageProcessingUtil$Result;->ERROR_CONVERSION:Landroidx/camera/core/ImageProcessingUtil$Result;

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/camera/core/ImageProcessingUtil$Result;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroidx/camera/core/ImageProcessingUtil$Result;->$VALUES:[Landroidx/camera/core/ImageProcessingUtil$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/ImageProcessingUtil$Result;
    .locals 1

    const-class v0, Landroidx/camera/core/ImageProcessingUtil$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/ImageProcessingUtil$Result;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/ImageProcessingUtil$Result;
    .locals 1

    sget-object v0, Landroidx/camera/core/ImageProcessingUtil$Result;->$VALUES:[Landroidx/camera/core/ImageProcessingUtil$Result;

    invoke-virtual {v0}, [Landroidx/camera/core/ImageProcessingUtil$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/ImageProcessingUtil$Result;

    return-object v0
.end method
