.class public final Li1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv0/g<",
            "Lv0/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lv0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv0/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lv0/b;->a:Lv0/b;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    invoke-static {v0, v1}, Lv0/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lv0/g;

    move-result-object v0

    sput-object v0, Li1/i;->a:Lv0/g;

    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lv0/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lv0/g;

    move-result-object v0

    sput-object v0, Li1/i;->b:Lv0/g;

    return-void
.end method
