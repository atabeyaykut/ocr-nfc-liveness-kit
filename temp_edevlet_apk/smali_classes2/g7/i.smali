.class public final synthetic Lg7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/b;


# static fields
.field public static final synthetic a:Lg7/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg7/i;

    invoke-direct {v0}, Lg7/i;-><init>()V

    sput-object v0, Lg7/i;->a:Lg7/i;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lh5/k;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lh5/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object p1, Lg7/m;->b:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
