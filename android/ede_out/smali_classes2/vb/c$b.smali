.class public final Lvb/c$b;
.super Lvb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lvb/c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvb/c$b;

    invoke-direct {v0}, Lvb/c$b;-><init>()V

    sput-object v0, Lvb/c$b;->a:Lvb/c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvb/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
