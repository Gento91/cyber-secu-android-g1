.class public Lcom/facebook/react/uimanager/ThemedReactContext;
.super Lcom/facebook/react/bridge/ReactContext;
.source "ThemedReactContext.java"


# instance fields
.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/ReactContext;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->hasCatalystInstance()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/facebook/react/bridge/ReactContext;->initializeWithInstance(Lcom/facebook/react/bridge/CatalystInstance;)V

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method


# virtual methods
.method public addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentActivity()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->hasCurrentActivity()Z

    move-result v0

    return v0
.end method

.method public removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method
