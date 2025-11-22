.class public final synthetic Lg7/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/h;


# static fields
.field public static final synthetic a:Lg7/v;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg7/v;

    invoke-direct {v0}, Lg7/v;-><init>()V

    sput-object v0, Lg7/v;->a:Lg7/v;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(Lc6/y;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lc6/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0(Lc6/e;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    return-object p1
.end method
